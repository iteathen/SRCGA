.class final enum Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;
.super Ljava/lang/Enum;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwipeRecognitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field public static final enum ADDING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field public static final enum FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field public static final enum IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

.field public static final enum REMOVING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 401
    new-instance v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 402
    new-instance v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ADDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->ADDING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 403
    new-instance v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "REMOVING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->REMOVING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 404
    new-instance v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FAILURE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    .line 400
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->ADDING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->REMOVING:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

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
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;
    .locals 3

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    invoke-virtual {v0}, [Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$SwipeRecognitionState;

    return-object v0
.end method
