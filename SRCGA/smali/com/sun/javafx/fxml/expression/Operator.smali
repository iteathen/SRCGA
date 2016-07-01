.class final enum Lcom/sun/javafx/fxml/expression/Operator;
.super Ljava/lang/Enum;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/fxml/expression/Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum ADD:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum AND:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum DIVIDE:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum GREATER_THAN:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum GREATER_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum LESS_THAN:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum LESS_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final MAX_PRIORITY:I = 0x6

.field public static final enum MODULO:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum MULTIPLY:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum NEGATE:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum NOT:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum NOT_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum OR:Lcom/sun/javafx/fxml/expression/Operator;

.field public static final enum SUBTRACT:Lcom/sun/javafx/fxml/expression/Operator;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 31
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "NEGATE"

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->NEGATE:Lcom/sun/javafx/fxml/expression/Operator;

    .line 32
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "NOT"

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->NOT:Lcom/sun/javafx/fxml/expression/Operator;

    .line 33
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "MULTIPLY"

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->MULTIPLY:Lcom/sun/javafx/fxml/expression/Operator;

    .line 34
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "DIVIDE"

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->DIVIDE:Lcom/sun/javafx/fxml/expression/Operator;

    .line 35
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "MODULO"

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->MODULO:Lcom/sun/javafx/fxml/expression/Operator;

    .line 36
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "ADD"

    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->ADD:Lcom/sun/javafx/fxml/expression/Operator;

    .line 37
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "SUBTRACT"

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->SUBTRACT:Lcom/sun/javafx/fxml/expression/Operator;

    .line 38
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "GREATER_THAN"

    const/4 v3, 0x7

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    .line 39
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "GREATER_THAN_OR_EQUAL_TO"

    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    .line 40
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "LESS_THAN"

    const/16 v3, 0x9

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    .line 41
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "LESS_THAN_OR_EQUAL_TO"

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    .line 42
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "EQUAL_TO"

    const/16 v3, 0xb

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    .line 43
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "NOT_EQUAL_TO"

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->NOT_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    .line 44
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "AND"

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->AND:Lcom/sun/javafx/fxml/expression/Operator;

    .line 45
    new-instance v0, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "OR"

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/fxml/expression/Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->OR:Lcom/sun/javafx/fxml/expression/Operator;

    .line 30
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sun/javafx/fxml/expression/Operator;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->NEGATE:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->NOT:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->MULTIPLY:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->DIVIDE:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->MODULO:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->ADD:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->SUBTRACT:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->NOT_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->AND:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/javafx/fxml/expression/Operator;->OR:Lcom/sun/javafx/fxml/expression/Operator;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/fxml/expression/Operator;->$VALUES:[Lcom/sun/javafx/fxml/expression/Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Operator;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "priority":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/fxml/expression/Operator;->priority:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/Operator;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/fxml/expression/Operator;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sun/javafx/fxml/expression/Operator;->$VALUES:[Lcom/sun/javafx/fxml/expression/Operator;

    invoke-virtual {v0}, [Lcom/sun/javafx/fxml/expression/Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/fxml/expression/Operator;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Operator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/fxml/expression/Operator;->priority:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Operator;
    return v0
.end method
