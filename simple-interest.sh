# سكربت لحساب الفائدة البسيطة

# التحقق من إدخال جميع القيم المطلوبة
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  echo "Example: $0 1000 5 2"
  exit 1
fi

# جلب القيم من مدخلات المستخدم
principal=$1  # المبلغ الأساسي
rate=$2       # نسبة الفائدة
time=$3       # الزمن (بالسنوات)

# حساب الفائدة البسيطة
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# عرض النتيجة
echo "Simple Interest: $interest"
