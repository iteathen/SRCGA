.class Ljavafx/scene/layout/ColumnConstraints$7;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "ColumnConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/ColumnConstraints;->fillWidthProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/ColumnConstraints;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/ColumnConstraints;Z)V
    .locals 5

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/ColumnConstraints;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/ColumnConstraints$7;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints$7;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$7;
    const-string v1, "fillWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints$7;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints$7;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    invoke-virtual {v1}, Ljavafx/scene/layout/ColumnConstraints;->requestLayout()V

    .line 388
    return-void
.end method
