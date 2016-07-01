.class public Ljavafx/scene/media/MediaMarkerEvent;
.super Ljavafx/event/ActionEvent;
.source "MediaMarkerEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private marker:Ljavafx/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaMarkerEvent;
    move-object v1, p1

    .local v1, "marker":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljava/lang/String;Ljavafx/util/Duration;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/event/ActionEvent;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaMarkerEvent;->marker:Ljavafx/util/Pair;

    .line 49
    return-void
.end method


# virtual methods
.method public getMarker()Ljavafx/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaMarkerEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaMarkerEvent;->marker:Ljavafx/util/Pair;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaMarkerEvent;
    return-object v0
.end method
