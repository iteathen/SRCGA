.class final synthetic Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

.field private final arg$2:I

.field private final arg$3:D

.field private final arg$4:D

.field private final arg$5:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

    move-object v9, v1

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$2:I

    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$3:D

    move-object v9, v1

    move-wide v10, v6

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$4:D

    move-object v9, v1

    move v10, v8

    iput-boolean v10, v9, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$5:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)Ljava/security/PrivilegedAction;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    new-instance v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)V

    move-object v0, v7

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)Ljava/security/PrivilegedAction;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    new-instance v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)V

    move-object v0, v7

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$2:I

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$3:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$4:D

    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$4;->arg$5:Z

    invoke-static/range {v2 .. v8}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->access$lambda$3(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDDZ)Ljava/lang/Void;

    move-result-object v2

    move-object v1, v2

    return-object v1
.end method
