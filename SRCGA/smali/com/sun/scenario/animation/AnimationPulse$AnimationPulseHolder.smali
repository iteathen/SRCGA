.class Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;
.super Ljava/lang/Object;
.source "AnimationPulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/AnimationPulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationPulseHolder"
.end annotation


# static fields
.field private static final holder:Lcom/sun/scenario/animation/AnimationPulse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/sun/scenario/animation/AnimationPulse;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/scenario/animation/AnimationPulse;-><init>()V

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;->holder:Lcom/sun/scenario/animation/AnimationPulse;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sun/scenario/animation/AnimationPulse;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sun/scenario/animation/AnimationPulse$AnimationPulseHolder;->holder:Lcom/sun/scenario/animation/AnimationPulse;

    return-object v0
.end method
