.class Ljavafx/scene/control/TableColumnBase$1;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "TableColumnBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumnBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableColumnBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$1;, "Ljavafx/scene/control/TableColumnBase$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TableColumnBase$1;->this$0:Ljavafx/scene/control/TableColumnBase;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$1;, "Ljavafx/scene/control/TableColumnBase$1;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumnBase$1;->this$0:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumnBase;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableColumnBase;

    move-object v2, v3

    .line 215
    .local v2, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableColumnBase$1;->this$0:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v4}, Ljavafx/scene/control/TableColumnBase;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TableColumnBase;->setVisible(Z)V

    .line 216
    goto :goto_0

    .line 217
    .end local v2    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TS;*>;"
    :cond_0
    return-void
.end method
