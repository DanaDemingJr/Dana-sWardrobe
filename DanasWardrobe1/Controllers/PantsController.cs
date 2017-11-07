using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DanasWardrobe1.Models;

namespace DanasWardrobe1.Controllers
{
    public class PantsController : Controller
    {
        private DanaWardrobe1Entities4 db = new DanaWardrobe1Entities4();

        // GET: Pants
        public ActionResult Index()
        {
            return View(db.Pants.ToList());
        }

        // GET: Pants/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            return View(pant);
        }

        // GET: Pants/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Pants/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PantsID,Name,Photo,Type,Color,Season,Occasion")] Pant pant)
        {
            if (ModelState.IsValid)
            {
                db.Pants.Add(pant);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pant);
        }

        // GET: Pants/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            return View(pant);
        }

        // POST: Pants/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PantsID,Name,Photo,Type,Color,Season,Occasion")] Pant pant)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pant).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pant);
        }

        // GET: Pants/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Pant pant = db.Pants.Find(id);
            if (pant == null)
            {
                return HttpNotFound();
            }
            return View(pant);
        }

        // POST: Pants/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pant pant = db.Pants.Find(id);
            db.Pants.Remove(pant);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
