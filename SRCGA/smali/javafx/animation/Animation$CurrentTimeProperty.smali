.class Ljavafx/animation/Animation$CurrentTimeProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentTimeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/Animation;Ljavafx/animation/Animation$1;)V
    .locals 5

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/Animation;
    move-object v2, p2

    .local v2, "x1":Ljavafx/animation/Animation$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/animation/Animation$CurrentTimeProperty;-><init>(Ljavafx/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;->fireValueChangedEvent()V

    .line 490
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation$CurrentTimeProperty;->get()Ljavafx/util/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    return-object v0
.end method

.method public get()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$CurrentTimeProperty;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    const-string v1, "currentTime"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentTimeProperty;
    return-object v0
.end method
