.class Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;
.super Ljavafx/css/StyleableObjectProperty;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TextInputControl;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    # getter for: Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$StyleableProperties;->HIGHLIGHT_TEXT_FILL:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    const-string v1, "highlightTextFill"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->updateHighlightTextFill()V

    .line 172
    return-void
.end method
