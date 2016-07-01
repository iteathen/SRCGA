.class public final Ljavafx/scene/web/WebEvent;
.super Ljavafx/event/Event;
.source "WebEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/event/Event;"
    }
.end annotation


# static fields
.field public static final ALERT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESIZED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CHANGED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITY_CHANGED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "WEB"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/web/WebEvent;->ANY:Ljavafx/event/EventType;

    .line 54
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/web/WebEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WEB_RESIZED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/web/WebEvent;->RESIZED:Ljavafx/event/EventType;

    .line 60
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/web/WebEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WEB_STATUS_CHANGED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/web/WebEvent;->STATUS_CHANGED:Ljavafx/event/EventType;

    .line 67
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/web/WebEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WEB_VISIBILITY_CHANGED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/web/WebEvent;->VISIBILITY_CHANGED:Ljavafx/event/EventType;

    .line 74
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/web/WebEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WEB_ALERT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/web/WebEvent;->ALERT:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventType;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/web/WebEvent;",
            ">;TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEvent;, "Ljavafx/scene/web/WebEvent<TT;>;"
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/web/WebEvent;>;"
    move-object v3, p3

    .local v3, "data":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 84
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/web/WebEvent;->data:Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEvent;, "Ljavafx/scene/web/WebEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEvent;->data:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEvent;, "Ljavafx/scene/web/WebEvent<TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEvent;, "Ljavafx/scene/web/WebEvent<TT;>;"
    const-string v1, "WebEvent [source = %s, eventType = %s, data = %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    .line 101
    invoke-virtual {v5}, Ljavafx/scene/web/WebEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/web/WebEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/web/WebEvent;->getData()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 99
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEvent;, "Ljavafx/scene/web/WebEvent<TT;>;"
    return-object v0
.end method
