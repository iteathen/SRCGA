.class public final enum Lcom/sun/javafx/tk/FocusCause;
.super Ljava/lang/Enum;
.source "FocusCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/tk/FocusCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/tk/FocusCause;

.field public static final enum ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

.field public static final enum DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

.field public static final enum TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

.field public static final enum TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/sun/javafx/tk/FocusCause;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRAVERSED_FORWARD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/FocusCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;

    .line 45
    new-instance v0, Lcom/sun/javafx/tk/FocusCause;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRAVERSED_BACKWARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/FocusCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

    .line 49
    new-instance v0, Lcom/sun/javafx/tk/FocusCause;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ACTIVATED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/FocusCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    .line 53
    new-instance v0, Lcom/sun/javafx/tk/FocusCause;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DEACTIVATED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/FocusCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/FocusCause;->DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/tk/FocusCause;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/tk/FocusCause;->DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/tk/FocusCause;->$VALUES:[Lcom/sun/javafx/tk/FocusCause;

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
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/FocusCause;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/tk/FocusCause;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/tk/FocusCause;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/FocusCause;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/tk/FocusCause;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sun/javafx/tk/FocusCause;->$VALUES:[Lcom/sun/javafx/tk/FocusCause;

    invoke-virtual {v0}, [Lcom/sun/javafx/tk/FocusCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/tk/FocusCause;

    return-object v0
.end method
