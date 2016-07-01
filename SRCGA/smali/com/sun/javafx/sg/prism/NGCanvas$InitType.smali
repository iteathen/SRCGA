.class final enum Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
.super Ljava/lang/Enum;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/sg/prism/NGCanvas$InitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

.field public static final enum CLEAR:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

.field public static final enum FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

.field public static final enum PRESERVE_UPPER_LEFT:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 169
    new-instance v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLEAR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->CLEAR:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    .line 170
    new-instance v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FILL_WHITE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    .line 171
    new-instance v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PRESERVE_UPPER_LEFT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->PRESERVE_UPPER_LEFT:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->CLEAR:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->PRESERVE_UPPER_LEFT:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->$VALUES:[Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

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
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->$VALUES:[Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    invoke-virtual {v0}, [Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    return-object v0
.end method
