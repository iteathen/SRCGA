.class final Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "EventHandlerProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/EventHandlerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventHandlerProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/event/EventHandler",
        "<-TT;>;>;"
    }
.end annotation


# instance fields
.field private final eventType:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/scene/EventHandlerProperties;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/EventHandlerProperties;Ljava/lang/Object;Ljava/lang/String;Ljavafx/event/EventType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljavafx/event/EventType",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;, "Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;->this$0:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 680
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;->eventType:Ljavafx/event/EventType;

    .line 682
    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;, "Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;->this$0:Lcom/sun/javafx/scene/EventHandlerProperties;

    invoke-static {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->access$000(Lcom/sun/javafx/scene/EventHandlerProperties;)Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;->eventType:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/EventHandlerProperties$EventHandlerProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 687
    return-void
.end method
