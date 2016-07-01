.class Ljavafx/scene/web/WebView$12;
.super Ljavafx/css/StyleableObjectProperty;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;->fontSmoothingTypeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/text/FontSmoothingType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;Ljavafx/scene/text/FontSmoothingType;)V
    .locals 5

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$12;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/text/FontSmoothingType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebView$12;->this$0:Ljavafx/scene/web/WebView;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$12;->this$0:Ljavafx/scene/web/WebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$12;
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
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$12;
    # getter for: Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SMOOTHING_TYPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/web/WebView$StyleableProperties;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$12;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$12;
    const-string v1, "fontSmoothingType"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$12;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$12;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 685
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$12;->this$0:Ljavafx/scene/web/WebView;

    invoke-static {v1}, Ljavafx/scene/web/WebView;->access$000(Ljavafx/scene/web/WebView;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView$12;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/text/FontSmoothingType;

    invoke-virtual {v2}, Ljavafx/scene/text/FontSmoothingType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/webkit/WebPage;->setFontSmoothingType(I)V

    .line 686
    return-void
.end method
