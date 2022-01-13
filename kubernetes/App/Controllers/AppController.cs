using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace App.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AppController : ControllerBase
    {
        public readonly IConfiguration _config;
        public AppController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet]
        public ActionResult GetName()
        {
            return Ok("Olá, " + _config.GetValue<string>("Name"));
        }
    }
}
