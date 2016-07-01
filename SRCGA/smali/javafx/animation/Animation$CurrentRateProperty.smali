.class Ljavafx/animation/Animation$CurrentRateProperty;
.super Ljavafx/beans/property/ReadOnlyDoublePropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentRateProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;

.field private value:D


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/Animation$CurrentRateProperty;->this$0:Ljavafx/animation/Animation;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyDoublePropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/Animation;Ljavafx/animation/Animation$1;)V
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/Animation;
    move-object v2, p2

    .local v2, "x1":Ljavafx/animation/Animation$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/animation/Animation$CurrentRateProperty;-><init>(Ljavafx/animation/Animation;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/animation/Animation$CurrentRateProperty;D)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation$CurrentRateProperty;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$CurrentRateProperty;->set(D)V

    return-void
.end method

.method private set(D)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/Animation$CurrentRateProperty;->value:D

    .line 212
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation$CurrentRateProperty;->fireValueChangedEvent()V

    .line 213
    return-void
.end method


# virtual methods
.method public get()D
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/animation/Animation$CurrentRateProperty;->value:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentRateProperty;
    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$CurrentRateProperty;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentRateProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$CurrentRateProperty;
    const-string v1, "currentRate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$CurrentRateProperty;
    return-object v0
.end method
