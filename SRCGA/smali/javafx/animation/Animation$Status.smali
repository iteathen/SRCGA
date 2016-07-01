.class public final enum Ljavafx/animation/Animation$Status;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/animation/Animation$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/animation/Animation$Status;

.field public static final enum PAUSED:Ljavafx/animation/Animation$Status;

.field public static final enum RUNNING:Ljavafx/animation/Animation$Status;

.field public static final enum STOPPED:Ljavafx/animation/Animation$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 112
    new-instance v0, Ljavafx/animation/Animation$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PAUSED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    .line 116
    new-instance v0, Ljavafx/animation/Animation$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    .line 120
    new-instance v0, Ljavafx/animation/Animation$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STOPPED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/animation/Animation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/animation/Animation$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/animation/Animation$Status;->$VALUES:[Ljavafx/animation/Animation$Status;

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
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$Status;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/animation/Animation$Status;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/animation/Animation$Status;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/animation/Animation$Status;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/animation/Animation$Status;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Ljavafx/animation/Animation$Status;->$VALUES:[Ljavafx/animation/Animation$Status;

    invoke-virtual {v0}, [Ljavafx/animation/Animation$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/Animation$Status;

    return-object v0
.end method
