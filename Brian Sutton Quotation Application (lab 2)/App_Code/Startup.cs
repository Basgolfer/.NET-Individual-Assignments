using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Brian_Sutton_Quotation_Application__lab_2_.Startup))]
namespace Brian_Sutton_Quotation_Application__lab_2_
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
