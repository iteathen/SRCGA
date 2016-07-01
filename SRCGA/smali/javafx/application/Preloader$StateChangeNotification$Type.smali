.class public final enum Ljavafx/application/Preloader$StateChangeNotification$Type;
.super Ljava/lang/Enum;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/application/Preloader$StateChangeNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/application/Preloader$StateChangeNotification$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/application/Preloader$StateChangeNotification$Type;

.field public static final enum BEFORE_INIT:Ljavafx/application/Preloader$StateChangeNotification$Type;

.field public static final enum BEFORE_LOAD:Ljavafx/application/Preloader$StateChangeNotification$Type;

.field public static final enum BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 367
    new-instance v0, Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEFORE_LOAD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/application/Preloader$StateChangeNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_LOAD:Ljavafx/application/Preloader$StateChangeNotification$Type;

    .line 372
    new-instance v0, Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEFORE_INIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/application/Preloader$StateChangeNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_INIT:Ljavafx/application/Preloader$StateChangeNotification$Type;

    .line 377
    new-instance v0, Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEFORE_START"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/application/Preloader$StateChangeNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;

    .line 362
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_LOAD:Ljavafx/application/Preloader$StateChangeNotification$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_INIT:Ljavafx/application/Preloader$StateChangeNotification$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/application/Preloader$StateChangeNotification$Type;->$VALUES:[Ljavafx/application/Preloader$StateChangeNotification$Type;

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
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$StateChangeNotification$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/application/Preloader$StateChangeNotification$Type;
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/application/Preloader$StateChangeNotification$Type;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Ljavafx/application/Preloader$StateChangeNotification$Type;->$VALUES:[Ljavafx/application/Preloader$StateChangeNotification$Type;

    invoke-virtual {v0}, [Ljavafx/application/Preloader$StateChangeNotification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/application/Preloader$StateChangeNotification$Type;

    return-object v0
.end method
