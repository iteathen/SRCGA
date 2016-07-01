.class final synthetic Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/TouchInput;

.field private final arg$2:Lcom/sun/glass/ui/View;

.field private final arg$3:[I

.field private final arg$4:Lcom/sun/glass/ui/Window;

.field private final arg$5:[I

.field private final arg$6:[I

.field private final arg$7:[I


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/TouchInput;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$2:Lcom/sun/glass/ui/View;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$3:[I

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$4:Lcom/sun/glass/ui/Window;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$5:[I

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$6:[I

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$7:[I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)Ljava/lang/Runnable;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v7, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V

    move-object v0, v7

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)Ljava/lang/Runnable;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v7, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V

    move-object v0, v7

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/TouchInput;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$2:Lcom/sun/glass/ui/View;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$3:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$4:Lcom/sun/glass/ui/Window;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$5:[I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$6:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/TouchInput$$Lambda$3;->arg$7:[I

    invoke-static/range {v1 .. v7}, Lcom/sun/glass/ui/monocle/TouchInput;->access$lambda$2(Lcom/sun/glass/ui/monocle/TouchInput;Lcom/sun/glass/ui/View;[ILcom/sun/glass/ui/Window;[I[I[I)V

    return-void
.end method
