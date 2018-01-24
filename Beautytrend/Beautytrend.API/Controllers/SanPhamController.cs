using Beautytrend.Entity;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Beautytrend.API.Controllers
{
    public class SanPhamController : ApiController
    {
        private ShopBeautytrendEntities db = new ShopBeautytrendEntities();
        [EnableCors("*","*","*")]
        public JToken GetAll()
        {
            return JToken.FromObject(db.SanPhams);
        }
    }
}
