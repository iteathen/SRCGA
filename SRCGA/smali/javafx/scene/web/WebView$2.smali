.class Ljavafx/scene/web/WebView$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;->fontScaleProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;D)V
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/web/WebView$2;->this$0:Ljavafx/scene/web/WebView;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$2;->this$0:Ljavafx/scene/web/WebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$2;
    # getter for: Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SCALE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/web/WebView$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$2;
    const-string v1, "fontScale"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$2;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 226
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$2;->this$0:Ljavafx/scene/web/WebView;

    invoke-static {v1}, Ljavafx/scene/web/WebView;->access$000(Ljavafx/scene/web/WebView;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView$2;->get()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/webkit/WebPage;->setZoomFactor(FZ)V

    .line 227
    return-void
.end method
