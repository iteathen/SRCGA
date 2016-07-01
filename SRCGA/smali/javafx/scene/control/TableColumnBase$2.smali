.class Ljavafx/scene/control/TableColumnBase$2;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableColumnBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableColumnBase;->contextMenuProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/ContextMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private contextMenuRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TableColumnBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$2;, "Ljavafx/scene/control/TableColumnBase$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableColumnBase$2;->this$0:Ljavafx/scene/control/TableColumnBase;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$2;, "Ljavafx/scene/control/TableColumnBase$2;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase$2;->contextMenuRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 268
    .local v1, "oldMenu":Ljavafx/scene/control/ContextMenu;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 269
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableColumnBase$2;->this$0:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->removeAcceleratorsFromScene(Ljava/util/List;Ljavafx/scene/control/TableColumnBase;)V

    .line 272
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ContextMenu;

    move-object v2, v3

    .line 273
    .local v2, "ctx":Ljavafx/scene/control/ContextMenu;
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TableColumnBase$2;->contextMenuRef:Ljava/lang/ref/WeakReference;

    .line 275
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 280
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableColumnBase$2;->this$0:Ljavafx/scene/control/TableColumnBase;

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableColumnBase;)V

    .line 282
    :cond_1
    return-void

    .line 267
    .end local v1    # "oldMenu":Ljavafx/scene/control/ContextMenu;
    .end local v2    # "ctx":Ljavafx/scene/control/ContextMenu;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase$2;->contextMenuRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ContextMenu;

    goto :goto_0
.end method
