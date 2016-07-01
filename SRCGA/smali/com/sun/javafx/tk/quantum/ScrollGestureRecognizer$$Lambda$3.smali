.class final synthetic Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

.field private final arg$2:I

.field private final arg$3:D

.field private final arg$4:D


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$2:I

    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$3:D

    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$4:D

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/security/PrivilegedAction;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    new-instance v6, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;-><init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)V

    move-object v0, v6

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/security/PrivilegedAction;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    new-instance v6, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;-><init>(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)V

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$1:Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$2:I

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$3:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer$$Lambda$3;->arg$4:D

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;->access$lambda$2(Lcom/sun/javafx/tk/quantum/ScrollGestureRecognizer;IDD)Ljava/lang/Void;

    move-result-object v2

    move-object v1, v2

    return-object v1
.end method
