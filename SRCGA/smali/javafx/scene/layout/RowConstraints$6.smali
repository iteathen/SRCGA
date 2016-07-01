.class Ljavafx/scene/layout/RowConstraints$6;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "RowConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/RowConstraints;->valignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/geometry/VPos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/RowConstraints;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/RowConstraints;)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/RowConstraints$6;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$6;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$6;
    const-string v1, "valignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$6;->this$0:Ljavafx/scene/layout/RowConstraints;

    invoke-virtual {v1}, Ljavafx/scene/layout/RowConstraints;->requestLayout()V

    .line 345
    return-void
.end method
