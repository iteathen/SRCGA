.class Ljavafx/scene/layout/FlowPane$Run;
.super Ljava/lang/Object;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/FlowPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# instance fields
.field baselineOffset:D

.field height:D

.field rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/layout/FlowPane$LayoutRect;",
            ">;"
        }
    .end annotation
.end field

.field width:D


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$Run;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 961
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljavafx/scene/layout/FlowPane$Run;->rects:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/layout/FlowPane$1;)V
    .locals 3

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$Run;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/layout/FlowPane$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/FlowPane$Run;-><init>()V

    return-void
.end method
