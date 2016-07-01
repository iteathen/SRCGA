.class public final Ljavafx/animation/PauseTransition;
.super Ljavafx/animation/Transition;
.source "PauseTransition.java"


# static fields
.field private static final DEFAULT_DURATION:Ljavafx/util/Duration;


# instance fields
.field private duration:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransition;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v1, v2}, Ljavafx/animation/PauseTransition;-><init>(Ljavafx/util/Duration;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransition;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Transition;-><init>()V

    .line 143
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/PauseTransition;->setDuration(Ljavafx/util/Duration;)V

    .line 144
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/PauseTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final durationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    new-instance v2, Ljavafx/animation/PauseTransition$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/PauseTransition$1;-><init>(Ljavafx/animation/PauseTransition;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    .line 133
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PauseTransition;
    return-object v0
.end method

.method public final getDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/PauseTransition;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/PauseTransition;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public interpolate(D)V
    .locals 0
    .param p1, "frac"    # D

    .prologue
    .line 160
    return-void
.end method

.method public final setDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PauseTransition;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/PauseTransition;->duration:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/PauseTransition;->DEFAULT_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/PauseTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 99
    :cond_1
    return-void
.end method
