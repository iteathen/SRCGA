.class Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;
.super Ljavafx/scene/control/PopupControl;
.source "ComboBoxPopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;)V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/PopupControl;-><init>()V

    .line 235
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2$1;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 240
    return-void
.end method


# virtual methods
.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$2;"
    return-object v0
.end method
