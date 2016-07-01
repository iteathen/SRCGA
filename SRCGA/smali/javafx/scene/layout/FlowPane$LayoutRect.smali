.class Ljavafx/scene/layout/FlowPane$LayoutRect;
.super Ljava/lang/Object;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/FlowPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutRect"
.end annotation


# instance fields
.field height:D

.field public node:Ljavafx/scene/Node;

.field width:D

.field x:D

.field y:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/layout/FlowPane$1;)V
    .locals 3

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$LayoutRect;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/layout/FlowPane$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/FlowPane$LayoutRect;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$LayoutRect;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutRect node id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->node:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->width:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/layout/FlowPane$LayoutRect;->height:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$LayoutRect;
    return-object v0
.end method
