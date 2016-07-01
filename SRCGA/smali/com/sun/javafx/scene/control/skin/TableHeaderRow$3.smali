.class Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;
.super Ljava/lang/Object;
.source "TableHeaderRow.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljavafx/scene/control/TableColumn",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TableHeaderRow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TableColumn",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TableColumn<**>;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TableHeaderRow$3;->this$0:Lcom/sun/javafx/scene/control/skin/TableHeaderRow;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TableHeaderRow;->access$100(Lcom/sun/javafx/scene/control/skin/TableHeaderRow;)Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/NestedTableColumnHeader;->setHeadersNeedUpdate()V

    .line 249
    return-void
.end method
