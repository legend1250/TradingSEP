﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TradingVLU.Models;

namespace TradingVLU.Controllers
{
    [RoutePrefix("manageitem")]
    [Route("{action=index}")]
    public class ItemManagementController : Controller
    {
        // GET: ItemManagement

        public ActionResult index()
        {
            return View();
        }

        public ActionResult list()
        {
            return View();
        }

        public ActionResult add()
        {
            //if (Session["userLogged"] == null)
            //{
            //    return RedirectToAction("account_settings", "User");
            //}
            using(vlutrading3545Entities db = new vlutrading3545Entities())
            {
                var statusList = db.item_status.Select(x => new { x.id, x.status }).ToList();
                ViewBag.statusList = statusList;
            }
           

            return View();
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult add(String name, String description, int quantity, int status, HttpPostedFileBase index_image,
                                IEnumerable<HttpPostedFileBase> detail_images)
        {
            using (vlutrading3545Entities db = new vlutrading3545Entities())
            {
                //list status
                var statusList = db.item_status.Select(x => new { x.id, x.status }).ToList();
                ViewBag.statusList = statusList;
                //
                byte[] img = null;
                string index_img_base64 = String.Empty;
                if (index_image != null)
                {
                    img = new byte[index_image.ContentLength];
                    using (BinaryReader read = new BinaryReader(index_image.InputStream))
                    {
                        img = read.ReadBytes(index_image.ContentLength);
                    }
                    index_img_base64 = Convert.ToBase64String(img);
                }

                string[] detail_img = new string[5];
                int count = 0;
                if (detail_images != null)
                {
                    if(detail_images.Count() > 5)
                    {
                        ViewBag.ErrorMessage = "Error occurred while create new item. Contact Admin for details";
                        return View();
                    }

                    foreach (var file in detail_images)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            
                            var fileName = Guid.NewGuid() + Path.GetExtension(file.FileName);
                            string RootFolder = @Server.MapPath("~/Content/img/items/");
                            string path = Path.Combine(RootFolder, fileName);
                            detail_img[count] = fileName;
                            file.SaveAs(path);
                            count++;
                        }
                    }
                }


                item item = new item
                {
                    item_name = name,
                    description = description,
                    quantity = quantity,
                    status = status,
                    index_image = index_img_base64,
                    seller_id = 1,
                    create_by = "vinh",
                    create_date = DateTime.Now,
                    update_by = "vinh",
                    update_date = DateTime.Now,
                    detail_image1 = detail_img[0],
                    detail_image2 = detail_img[1],
                    detail_image3 = detail_img[2],
                    detail_image4 = detail_img[3],
                    detail_image5 = detail_img[4]
                };
                try
                {
                    db.items.Add(item);
                    
                    db.SaveChanges();
                }
                catch (Exception e)
                {
                    ViewBag.ErrorMessage = "Error occurred while create new item. Contact Admin for details";
                    return View();

                }
                //if (uploadImages != null)
                //{
                //    string[] n = uploadImages.FileName.Split('.');
                //    string sfile = n[0] + "_" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + "." + n[1];
                //    string spath = Server.MapPath("~/Content/img/items/");
                //    string sfullpath = Path.Combine(spath, sfile);
                //    try
                //    {
                //        uploadImages.SaveAs(sfullpath);
                //        db.item_images.Add(new item_images
                //        {
                //            item_id = 1,
                //            filename = sfile,
                //            path = sfullpath,
                //            create_by = "vinh",
                //            create_date = DateTime.Now,
                //            update_by = "vinh",
                //            update_date = DateTime.Now
                //        });
                //        db.SaveChanges();
                //    }

                //    catch (Exception ex)
                //    {

                //    }


                //}
            }




            return View();
        }

    }
}