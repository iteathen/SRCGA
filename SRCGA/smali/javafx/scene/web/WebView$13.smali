.class Ljavafx/scene/web/WebView$13;
.super Ljavafx/css/StyleableBooleanProperty;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;->contextMenuEnabledProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;Z)V
    .locals 5

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$13;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/WebView$13;->this$0:Ljavafx/scene/web/WebView;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$13;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$13;->this$0:Ljavafx/scene/web/WebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$13;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$13;
    # getter for: Ljavafx/scene/web/WebView$StyleableProperties;->CONTEXT_MENU_ENABLED:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/web/WebView$StyleableProperties;->access$1100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$13;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$13;
    const-string v1, "contextMenuEnabled"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView$13;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$13;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 727
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$13;->this$0:Ljavafx/scene/web/WebView;

    invoke-static {v1}, Ljavafx/scene/web/WebView;->access$000(Ljavafx/scene/web/WebView;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView$13;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/webkit/WebPage;->setContextMenuEnabled(Z)V

    .line 728
    return-void
.end method
