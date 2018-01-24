using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Beautytrend.Startup))]
namespace Beautytrend
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
