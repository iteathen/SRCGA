.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;
.super Ljava/lang/Object;
.source "CustomColorDialog.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;
    move-object v1, p1

    .local v1, "ignored":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 181
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Stage;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    .line 183
    goto :goto_0
.end method
