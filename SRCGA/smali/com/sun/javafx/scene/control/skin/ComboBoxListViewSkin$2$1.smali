.class Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;
.super Ljavafx/scene/control/ListCell;
.source "ComboBoxListViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;->call(Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/ListCell",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;->this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListCell;-><init>()V

    return-void
.end method


# virtual methods
.method public updateItem(Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 426
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;->this$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/scene/control/ListCell;Ljava/lang/Object;Z)Z

    move-result v3

    .line 427
    return-void
.end method
