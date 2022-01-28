#pragma checksum "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "28632cab5696e768a5d5dbb20b991761e6dd564d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Admin_listOfMovies), @"mvc.1.0.view", @"/Views/Admin/listOfMovies.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\_ViewImports.cshtml"
using BIA_Cinema_Ticket;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\_ViewImports.cshtml"
using BIA_Cinema_Ticket.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"28632cab5696e768a5d5dbb20b991761e6dd564d", @"/Views/Admin/listOfMovies.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0ae34280c174cbec5a0a3988b56fd2bc0bd852ee", @"/Views/_ViewImports.cshtml")]
    public class Views_Admin_listOfMovies : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("img-fluid rounded w-100"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:5rem;height:10rem;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-danger"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
  
    Layout = "_Admin";
    List<Movie> movies = ViewBag.movies;

    string[] tableHeaders = new string[]{
        "Image","Name","Category","Duration","Director","Year","Rate","View Status","Trailer"
    };


#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid px-4"">
    <div class=""card mb-4 mt-4"">
        <div class=""card-header"">
            <i class=""fas fa-table me-1""></i>
            <b>List Of Movies</b>
        </div>
        <div class=""card-body"">
            <div class=""table"">
                <table id=""datatablesSimple"">
                    <thead>
                        <tr>
");
#nullable restore
#line 21 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                             foreach (var table_header in tableHeaders)
                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                <th>");
#nullable restore
#line 23 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(table_header);

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n");
#nullable restore
#line 24 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                            }

#line default
#line hidden
#nullable disable
            WriteLiteral("                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n");
#nullable restore
#line 28 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                         foreach (var movie in movies)
                        {


#line default
#line hidden
#nullable disable
            WriteLiteral("                            <tr>\r\n                                <td>\r\n");
#nullable restore
#line 33 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                                      
                                        String img_source = movie.movieName.ToLower().Replace(" ", "_") + "_" + movie.year + ".jpg";
                                    

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "28632cab5696e768a5d5dbb20b991761e6dd564d7617", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 1360, "~/pic/Movie-pics/", 1360, 17, true);
#nullable restore
#line 36 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
AddHtmlAttributeValue("", 1377, img_source, 1377, 11, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                </td>\r\n                                <td>");
#nullable restore
#line 38 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.movieName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 40 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.categories);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>");
#nullable restore
#line 42 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.duration);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>");
#nullable restore
#line 43 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.director);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>");
#nullable restore
#line 44 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.year);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>");
#nullable restore
#line 45 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.rate);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>");
#nullable restore
#line 46 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.viewStatus);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>");
#nullable restore
#line 47 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                               Write(movie.trailerLink);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td>\r\n                                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "28632cab5696e768a5d5dbb20b991761e6dd564d12394", async() => {
                WriteLiteral("Edit");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "href", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 2052, "~/admin/updatemovie?movie_ID=", 2052, 29, true);
#nullable restore
#line 49 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
AddHtmlAttributeValue("", 2081, movie.movie_ID, 2081, 15, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                    <br />\r\n                                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "28632cab5696e768a5d5dbb20b991761e6dd564d14174", async() => {
                WriteLiteral("Delete");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "href", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 2221, "~/admin/deletemovie?movie_ID=", 2221, 29, true);
#nullable restore
#line 51 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
AddHtmlAttributeValue("", 2250, movie.movie_ID, 2250, 15, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                </td>\r\n                            </tr>\r\n");
#nullable restore
#line 54 "C:\Users\beyza\OneDrive\Masaüstü\BIA CINEMA TICKET DATABASE MANAGEMENT SYSTEM\BIA-Cinema-Ticket\BIA-Cinema-Ticket\Views\Admin\listOfMovies.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                    </tbody>\r\n                </table>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
