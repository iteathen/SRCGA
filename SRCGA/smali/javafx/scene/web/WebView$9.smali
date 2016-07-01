.class Ljavafx/scene/web/WebView$9;
.super Ljavafx/css/StyleableDoubleProperty;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/web/WebView$9;->this$0:Ljavafx/scene/web/WebView;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$9;->this$0:Ljavafx/scene/web/WebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$9;
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
    .line 515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$9;
    # getter for: Ljavafx/scene/web/WebView$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/web/WebView$StyleableProperties;->access$700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$9;
    const-string v1, "prefHeight"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$9;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$9;->this$0:Ljavafx/scene/web/WebView;

    invoke-virtual {v1}, Ljavafx/scene/web/WebView;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$9;->this$0:Ljavafx/scene/web/WebView;

    invoke-virtual {v1}, Ljavafx/scene/web/WebView;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->requestLayout()V

    .line 512
    :cond_0
    return-void
.end method
