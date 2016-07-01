.class public final enum Ljavafx/scene/control/Alert$AlertType;
.super Ljava/lang/Enum;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/Alert$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/Alert$AlertType;

.field public static final enum CONFIRMATION:Ljavafx/scene/control/Alert$AlertType;

.field public static final enum ERROR:Ljavafx/scene/control/Alert$AlertType;

.field public static final enum INFORMATION:Ljavafx/scene/control/Alert$AlertType;

.field public static final enum NONE:Ljavafx/scene/control/Alert$AlertType;

.field public static final enum WARNING:Ljavafx/scene/control/Alert$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 127
    new-instance v0, Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Alert$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->NONE:Ljavafx/scene/control/Alert$AlertType;

    .line 136
    new-instance v0, Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INFORMATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Alert$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->INFORMATION:Ljavafx/scene/control/Alert$AlertType;

    .line 145
    new-instance v0, Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WARNING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Alert$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->WARNING:Ljavafx/scene/control/Alert$AlertType;

    .line 154
    new-instance v0, Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CONFIRMATION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Alert$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->CONFIRMATION:Ljavafx/scene/control/Alert$AlertType;

    .line 162
    new-instance v0, Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ERROR"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Alert$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->ERROR:Ljavafx/scene/control/Alert$AlertType;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljavafx/scene/control/Alert$AlertType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/Alert$AlertType;->NONE:Ljavafx/scene/control/Alert$AlertType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/Alert$AlertType;->INFORMATION:Ljavafx/scene/control/Alert$AlertType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/control/Alert$AlertType;->WARNING:Ljavafx/scene/control/Alert$AlertType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/control/Alert$AlertType;->CONFIRMATION:Ljavafx/scene/control/Alert$AlertType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/control/Alert$AlertType;->ERROR:Ljavafx/scene/control/Alert$AlertType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/Alert$AlertType;->$VALUES:[Ljavafx/scene/control/Alert$AlertType;

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
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert$AlertType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/Alert$AlertType;
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/Alert$AlertType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Alert$AlertType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/Alert$AlertType;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Ljavafx/scene/control/Alert$AlertType;->$VALUES:[Ljavafx/scene/control/Alert$AlertType;

    invoke-virtual {v0}, [Ljavafx/scene/control/Alert$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/Alert$AlertType;

    return-object v0
.end method
