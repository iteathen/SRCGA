.class public Lcom/sun/javafx/event/DirectEvent;
.super Ljavafx/event/Event;
.source "DirectEvent.java"


# static fields
.field public static final DIRECT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Lcom/sun/javafx/event/DirectEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# instance fields
.field private final originalEvent:Ljavafx/event/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIRECT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/event/DirectEvent;->DIRECT:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/DirectEvent;
    move-object v1, p1

    .local v1, "originalEvent":Ljavafx/event/Event;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/event/DirectEvent;-><init>(Ljavafx/event/Event;Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljavafx/event/Event;Ljava/lang/Object;Ljavafx/event/EventTarget;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/DirectEvent;
    move-object v1, p1

    .local v1, "originalEvent":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "source":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "target":Ljavafx/event/EventTarget;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    sget-object v7, Lcom/sun/javafx/event/DirectEvent;->DIRECT:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6, v7}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 53
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/event/DirectEvent;->originalEvent:Ljavafx/event/Event;

    .line 54
    return-void
.end method


# virtual methods
.method public getOriginalEvent()Ljavafx/event/Event;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/DirectEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/DirectEvent;->originalEvent:Ljavafx/event/Event;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/DirectEvent;
    return-object v0
.end method
