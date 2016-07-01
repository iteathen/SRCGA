.class Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;
.super Ljavafx/beans/binding/DoubleBinding;
.source "TextFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V
    .locals 8

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 156
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/layout/Pane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/layout/Pane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/layout/Pane;->getWidth()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$1;
    return-wide v0
.end method
