.class Ljavafx/scene/control/TableColumn$2;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TableColumn",
        "<TS;TT;>;",
        "Ljavafx/scene/control/TableCell",
        "<TS;TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableColumn;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V
    .locals 9

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$2;, "Ljavafx/scene/control/TableColumn$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumn;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn<TS;TT;>;Ljavafx/scene/control/TableCell<TS;TT;>;>;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TableColumn$2;->this$0:Ljavafx/scene/control/TableColumn;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$2;, "Ljavafx/scene/control/TableColumn$2;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumn$2;->this$0:Ljavafx/scene/control/TableColumn;

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    move-object v1, v3

    .line 419
    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v2, v3

    .line 421
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v3, v2

    const-string v4, "tableRecreateKey"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    move-object v3, v2

    const-string v4, "tableRecreateKey"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 424
    :cond_1
    move-object v3, v2

    const-string v4, "tableRecreateKey"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 425
    goto :goto_0
.end method
