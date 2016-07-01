.class public abstract Lcom/sun/scenario/animation/shared/AnimationAccessor;
.super Ljava/lang/Object;
.source "AnimationAccessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/scenario/animation/shared/AnimationAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/AnimationAccessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/AnimationAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/sun/scenario/animation/shared/AnimationAccessor;
    .locals 6

    .prologue
    .line 34
    sget-object v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    if-eqz v2, :cond_0

    .line 35
    sget-object v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-object v0, v2

    .line 47
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-class v2, Ljavafx/animation/Animation;

    move-object v0, v2

    .line 42
    .local v0, "c":Ljava/lang/Class;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    .line 46
    :cond_1
    sget-boolean v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The DEFAULT field must be initialized"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 43
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 44
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-boolean v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 47
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2
    sget-object v2, Lcom/sun/scenario/animation/shared/AnimationAccessor;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract finished(Ljavafx/animation/Animation;)V
.end method

.method public abstract jumpTo(Ljavafx/animation/Animation;JJZ)V
.end method

.method public abstract playTo(Ljavafx/animation/Animation;JJ)V
.end method

.method public abstract setCurrentRate(Ljavafx/animation/Animation;D)V
.end method

.method public abstract setCurrentTicks(Ljavafx/animation/Animation;J)V
.end method
