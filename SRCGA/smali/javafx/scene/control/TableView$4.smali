.class Ljavafx/scene/control/TableView$4;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableView;-><init>(Ljavafx/collections/ObservableList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;)V
    .locals 4

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$4;, "Ljavafx/scene/control/TableView$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$4;->this$0:Ljavafx/scene/control/TableView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView$4;, "Ljavafx/scene/control/TableView$4;"
    move-object v2, p1

    .local v2, "c":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+Ljava/lang/Object;+Ljava/lang/Object;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TableView.contentWidth"

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 549
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$4;->this$0:Ljavafx/scene/control/TableView;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/TableView;->access$100(Ljavafx/scene/control/TableView;D)V

    .line 551
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$4;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "TableView.contentWidth"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 553
    :cond_1
    return-void
.end method
