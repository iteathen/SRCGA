.class Ljavafx/scene/control/TableColumnBase$5;
.super Ljavafx/beans/property/SimpleDoubleProperty;
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
.method constructor <init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$5;, "Ljavafx/scene/control/TableColumnBase$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumnBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/control/TableColumnBase$5;->this$0:Ljavafx/scene/control/TableColumnBase;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBase$5;, "Ljavafx/scene/control/TableColumnBase$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumnBase$5;->this$0:Ljavafx/scene/control/TableColumnBase;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumnBase$5;->this$0:Ljavafx/scene/control/TableColumnBase;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TableColumnBase;->impl_setWidth(D)V

    .line 452
    return-void
.end method
