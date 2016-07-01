.class abstract Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
.super Ljava/lang/Object;
.source "CompositeEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/event/CompositeEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EventProcessorRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private nextRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation
.end field

.field private prevRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/event/CompositeEventHandler$1;)V
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/event/CompositeEventHandler$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->nextRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 7

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->nextRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->prevRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 7

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->prevRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    return-object v0
.end method


# virtual methods
.method public abstract handleBubblingEvent(Ljavafx/event/Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract handleCapturingEvent(Ljavafx/event/Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract isDisconnected()Z
.end method

.method public abstract stores(Ljavafx/event/EventHandler;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;Z)Z"
        }
    .end annotation
.end method
