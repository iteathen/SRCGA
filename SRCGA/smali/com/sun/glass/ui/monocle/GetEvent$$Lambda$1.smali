.class final synthetic Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/glass/ui/monocle/UdevListener;


# static fields
.field private static final instance:Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;->instance:Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/sun/glass/ui/monocle/UdevListener;
    .locals 1

    sget-object v0, Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;->instance:Lcom/sun/glass/ui/monocle/GetEvent$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public udevEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/GetEvent;->access$lambda$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
