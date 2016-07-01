.class public Ljavafx/scene/media/MediaErrorEvent;
.super Ljavafx/event/Event;
.source "MediaErrorEvent.java"


# static fields
.field public static final MEDIA_ERROR:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private error:Ljavafx/scene/media/MediaException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "Media Error Event"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/media/MediaErrorEvent;->MEDIA_ERROR:Ljavafx/event/EventType;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/scene/media/MediaException;)V
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "error":Ljavafx/scene/media/MediaException;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    sget-object v7, Ljavafx/scene/media/MediaErrorEvent;->MEDIA_ERROR:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6, v7}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 64
    move-object v4, v3

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "error == null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/media/MediaErrorEvent;->error:Ljavafx/scene/media/MediaException;

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/MediaErrorEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/media/MediaErrorEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaErrorEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/media/MediaErrorEvent;
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/scene/media/MediaErrorEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaErrorEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaErrorEvent;
    return-object v0
.end method

.method public getMediaError()Ljavafx/scene/media/MediaException;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaErrorEvent;->error:Ljavafx/scene/media/MediaException;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaErrorEvent;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaErrorEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljavafx/event/Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 86
    invoke-virtual {v2}, Ljavafx/scene/media/MediaErrorEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaErrorEvent;->error:Ljavafx/scene/media/MediaException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaErrorEvent;
    return-object v0
.end method
