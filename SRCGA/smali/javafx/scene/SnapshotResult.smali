.class public Ljavafx/scene/SnapshotResult;
.super Ljava/lang/Object;
.source "SnapshotResult.java"


# instance fields
.field private image:Ljavafx/scene/image/WritableImage;

.field private params:Ljavafx/scene/SnapshotParameters;

.field private source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;Ljavafx/scene/SnapshotParameters;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotResult;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/WritableImage;
    move-object v2, p2

    .local v2, "source":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "params":Ljavafx/scene/SnapshotParameters;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/SnapshotResult;->image:Ljavafx/scene/image/WritableImage;

    .line 42
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/SnapshotResult;->source:Ljava/lang/Object;

    .line 43
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/SnapshotResult;->params:Ljavafx/scene/SnapshotParameters;

    .line 44
    return-void
.end method


# virtual methods
.method public getImage()Ljavafx/scene/image/WritableImage;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotResult;->image:Ljavafx/scene/image/WritableImage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotResult;
    return-object v0
.end method

.method public getSnapshotParameters()Ljavafx/scene/SnapshotParameters;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotResult;->params:Ljavafx/scene/SnapshotParameters;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotResult;
    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SnapshotResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SnapshotResult;->source:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SnapshotResult;
    return-object v0
.end method
