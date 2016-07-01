.class public final Ljavafx/scene/paint/StopBuilder;
.super Ljava/lang/Object;
.source "StopBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/paint/Stop;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private color:Ljavafx/scene/paint/Color;

.field private offset:D


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/StopBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v1, v0

    sget-object v2, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    iput-object v2, v1, Ljavafx/scene/paint/StopBuilder;->color:Ljavafx/scene/paint/Color;

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/paint/StopBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/paint/StopBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/StopBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/StopBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/StopBuilder;->build()Ljavafx/scene/paint/Stop;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/StopBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/paint/Stop;
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/StopBuilder;
    new-instance v2, Ljavafx/scene/paint/Stop;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/paint/StopBuilder;->offset:D

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/paint/StopBuilder;->color:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v1, v2

    .line 69
    .local v1, "x":Ljavafx/scene/paint/Stop;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/StopBuilder;
    return-object v0
.end method

.method public color(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/StopBuilder;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/StopBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/StopBuilder;->color:Ljavafx/scene/paint/Color;

    .line 52
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/StopBuilder;
    return-object v0
.end method

.method public offset(D)Ljavafx/scene/paint/StopBuilder;
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/StopBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/StopBuilder;->offset:D

    .line 61
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/StopBuilder;
    return-object v0
.end method
