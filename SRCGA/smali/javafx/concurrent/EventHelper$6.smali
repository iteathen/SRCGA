.class Ljavafx/concurrent/EventHelper$6;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "EventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/concurrent/EventHelper;-><init>(Ljavafx/event/EventTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/concurrent/WorkerStateEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/concurrent/EventHelper;


# direct methods
.method constructor <init>(Ljavafx/concurrent/EventHelper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/concurrent/EventHelper;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/concurrent/EventHelper$6;->this$0:Ljavafx/concurrent/EventHelper;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/EventHelper$6;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/EventHelper$6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/event/EventHandler;

    move-object v1, v2

    .line 111
    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/EventHelper$6;->this$0:Ljavafx/concurrent/EventHelper;

    sget-object v3, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_FAILED:Ljavafx/event/EventType;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/concurrent/EventHelper;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 112
    return-void
.end method
