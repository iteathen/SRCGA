.class final enum Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
.super Ljava/lang/Enum;
.source "GestureSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/GestureSupport$GestureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

.field public static final enum Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Idle"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Running"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    new-instance v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Inertia"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Idle:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Running:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->Inertia:Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->$VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->$VALUES:[Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/GestureSupport$GestureState$StateId;

    return-object v0
.end method
