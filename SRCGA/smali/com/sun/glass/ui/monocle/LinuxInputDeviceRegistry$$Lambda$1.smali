.class final synthetic Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/glass/ui/monocle/UdevListener;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

.field private final arg$2:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;->arg$1:Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;->arg$2:Ljava/util/Map;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)Lcom/sun/glass/ui/monocle/UdevListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)Lcom/sun/glass/ui/monocle/UdevListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public udevEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;->arg$1:Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry$$Lambda$1;->arg$2:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;->access$lambda$0(Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
