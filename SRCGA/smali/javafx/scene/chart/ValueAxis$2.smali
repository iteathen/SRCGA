.class Ljavafx/scene/chart/ValueAxis$2;
.super Ljavafx/beans/property/ReadOnlyDoubleWrapper;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/ValueAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$2;, "Ljavafx/scene/chart/ValueAxis$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/chart/ValueAxis$2;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$2;, "Ljavafx/scene/chart/ValueAxis$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$2;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$2;->this$0:Ljavafx/scene/chart/ValueAxis;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/chart/ValueAxis;->measureInvalid:Z

    .line 115
    return-void
.end method
