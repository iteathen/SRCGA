.class Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
.super Ljava/lang/Object;
.source "RotateGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPointTracker"
.end annotation


# instance fields
.field absX:D

.field absY:D

.field x:D

.field y:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$1;)V
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsX()D
    .locals 3

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->absX:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    return-wide v0
.end method

.method public getAbsY()D
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->absY:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    return-wide v0
.end method

.method public getX()D
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    return-wide v0
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    return-wide v0
.end method

.method public update(JDDDD)V
    .locals 15

    .prologue
    .line 427
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;
    move-wide/from16 v2, p1

    .local v2, "nanos":J
    move-wide/from16 v4, p3

    .local v4, "x":D
    move-wide/from16 v6, p5

    .local v6, "y":D
    move-wide/from16 v8, p7

    .local v8, "absX":D
    move-wide/from16 v10, p9

    .local v10, "absY":D
    move-object v12, v1

    move-wide v13, v4

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->x:D

    .line 428
    move-object v12, v1

    move-wide v13, v6

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->y:D

    .line 429
    move-object v12, v1

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->absX:D

    .line 430
    move-object v12, v1

    move-wide v13, v10

    iput-wide v13, v12, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$TouchPointTracker;->absY:D

    .line 431
    return-void
.end method
