.class Lcom/sun/javafx/tk/quantum/GestureRecognizers;
.super Ljava/lang/Object;
.source "GestureRecognizers.java"

# interfaces
.implements Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# instance fields
.field private recognizers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sun/javafx/tk/quantum/GestureRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v1, v0

    new-instance v2, Ljava/util/Vector;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->recognizers:Ljava/util/Collection;

    return-void
.end method

.method private synchWorkList()[Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    if-nez v1, :cond_0

    .line 56
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->recognizers:Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    .line 58
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    return-object v0
.end method


# virtual methods
.method add(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->contains(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->recognizers:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    .line 41
    :cond_0
    return-void
.end method

.method contains(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)Z
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->recognizers:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    return v0
.end method

.method public notifyBeginTouchEvent(JIZI)V
    .locals 15

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "modifiers":I
    move/from16 v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "touchEventCount":I
    move-object v9, v1

    invoke-direct {v9}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->synchWorkList()[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    move-result-object v9

    move-object v7, v9

    .line 63
    .local v7, "wl":[Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    const/4 v9, 0x0

    move v8, v9

    .local v8, "idx":I
    :goto_0
    move v9, v8

    move-object v10, v7

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 64
    move-object v9, v7

    move v10, v8

    aget-object v9, v9, v10

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-interface/range {v9 .. v14}, Lcom/sun/javafx/tk/quantum/GestureRecognizer;->notifyBeginTouchEvent(JIZI)V

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public notifyEndTouchEvent(J)V
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-wide v1, p1

    .local v1, "time":J
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->synchWorkList()[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    move-result-object v5

    move-object v3, v5

    .line 79
    .local v3, "wl":[Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "idx":I
    :goto_0
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 80
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    move-wide v6, v1

    invoke-interface {v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GestureRecognizer;->notifyEndTouchEvent(J)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public notifyNextTouchEvent(JIJDDDD)V
    .locals 32

    .prologue
    .line 71
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-wide/from16 v3, p1

    .local v3, "time":J
    move/from16 v5, p3

    .local v5, "type":I
    move-wide/from16 v6, p4

    .local v6, "touchId":J
    move-wide/from16 v8, p6

    .local v8, "x":D
    move-wide/from16 v10, p8

    .local v10, "y":D
    move-wide/from16 v12, p10

    .local v12, "xAbs":D
    move-wide/from16 v14, p12

    .local v14, "yAbs":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->synchWorkList()[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    move-result-object v18

    move-object/from16 v16, v18

    .line 72
    .local v16, "wl":[Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    const/16 v18, 0x0

    move/from16 v17, v18

    .local v17, "idx":I
    :goto_0
    move/from16 v18, v17

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 73
    move-object/from16 v18, v16

    move/from16 v19, v17

    aget-object v18, v18, v19

    move-wide/from16 v19, v3

    move/from16 v21, v5

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    invoke-interface/range {v18 .. v31}, Lcom/sun/javafx/tk/quantum/GestureRecognizer;->notifyNextTouchEvent(JIJDDDD)V

    .line 72
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method remove(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GestureRecognizers;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/tk/quantum/GestureRecognizer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->contains(Lcom/sun/javafx/tk/quantum/GestureRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->recognizers:Ljava/util/Collection;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GestureRecognizers;->workList:[Lcom/sun/javafx/tk/quantum/GestureRecognizer;

    .line 48
    :cond_0
    return-void
.end method
