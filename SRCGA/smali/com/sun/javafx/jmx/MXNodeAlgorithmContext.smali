.class public Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
.super Ljava/lang/Object;
.source "MXNodeAlgorithmContext.java"


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move v1, p1

    .local v1, "initCounterValue":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;->counter:I

    .line 51
    return-void
.end method


# virtual methods
.method public getNextInt()I
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;->counter:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    return v0
.end method
