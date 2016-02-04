using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Brian_Sutton_Lab_1.Startup))]
namespace Brian_Sutton_Lab_1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
