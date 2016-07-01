.class Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;
.super Ljava/lang/Object;
.source "ComboBoxListViewSkin.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getDefaultCellFactory()Ljavafx/util/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/ListView",
        "<TT;>;",
        "Ljavafx/scene/control/ListCell",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;->call(Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;"
    return-object v0
.end method

.method public call(Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;"
    move-object v1, p1

    .local v1, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2$1;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$2;"
    return-object v0
.end method
